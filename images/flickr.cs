using System;
using System.Collections.Generic;
using System.IO;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Design;
using System.ServiceModel.Security.Protocols;
using System.Text;
using System.Xml;
using System.Xml.Serialization;

namespace FlickrLib {
  public class FlickrEncoder : MessageEncoder {
    public override string ContentType {
      get { return "text/xml"; }
    }

    public override string MediaType {
      get { return "text/xml"; }
    }

    public override MessageVersion MessageVersion {
      get { return MessageVersion.Soap12Addressing1; }
    }

    public override Message ReadMessage(System.IO.Stream stream, int maxSizeOfHeaders) {
      throw new NotImplementedException();
    }

    public override Message ReadMessage(ArraySegment<byte> buffer, BufferManager bufferManager) {
      Encoding encoding;
      XmlDictionaryReader reader = XmlDictionaryReader.CreateDictionaryReaderFromTextReader(
                                    new MemoryStream(buffer.Array),
                                    false,
                                    out encoding);
      return Message.CreateMessage(reader, Int32.MaxValue, MessageVersion);
    }

    public override void WriteMessage(Message message, System.IO.Stream stream) {
      throw new NotImplementedException();
    }

    public override ArraySegment<byte> WriteMessage(Message msg, int maxMessageSize, BufferManager bufferManager, int messageOffset) {
      byte[] buffer = new byte[maxMessageSize];

      XmlWriterSettings settings = new XmlWriterSettings();
      settings.OmitXmlDeclaration = true;
      settings.Indent = true;
      settings.Encoding = Encoding.UTF8;

      MemoryStream stream = new MemoryStream(buffer);
      XmlWriter innerWriter = XmlWriter.Create(stream, settings);
      XmlDictionaryWriter writer = XmlDictionaryWriter.CreateDictionaryWriter(innerWriter, false);

      msg.WriteMessage(writer);
      writer.Flush();

      return new ArraySegment<byte>(buffer, 0, (int)stream.Position);
    }
  }

  public class FlickrEncoderFactory : MessageEncoderFactory {
    MessageEncoder _encoder;

    public FlickrEncoderFactory() {
      _encoder = new FlickrEncoder();
    }

    public override MessageEncoder Encoder {
      get { return _encoder; }
    }

    public override MessageVersion MessageVersion {
      get { return Encoder.MessageVersion; }
    }
  }

  class FlickrEncodingBindingElement : BindingElement, IMessageEncodingBindingElement {
    public override BindingElement Clone() {
      return new FlickrEncodingBindingElement();
    }

    public MessageEncoderFactory CreateMessageEncoderFactory() {
      return new FlickrEncoderFactory();
    }

    public AddressingVersion AddressingVersion {
      get { return AddressingVersion.Addressing1; }
    }

    public override ChannelProtectionRequirements GetProtectionRequirements() {
      return null;
    }

    public override IChannelFactory BuildChannelFactory(ChannelBuildContext context) {
      if (context == null)
        throw new ArgumentNullException("context");

      context.UnhandledBindingElements.Add(this);
      return context.BuildInnerChannelFactory();
    }

    public override IChannelListener<TChannel> BuildChannelListener<TChannel>(ChannelBuildContext context) {
      if (context == null)
        throw new ArgumentNullException("context");

      context.UnhandledBindingElements.Add(this);
      return context.BuildInnerChannelListener<TChannel>();
    }
  }

  public class Flickr {
    private string _apiKey;

    private Binding CreateBinding() {
      return new CustomBinding(new FlickrEncodingBindingElement(), new HttpTransportBindingElement());
    }

    public Flickr(string apiKey) {
      _apiKey = apiKey;
    }

    public string Call(string xml) {
      ChannelFactory<IRequestChannel> factory;
      using (factory = new ChannelFactory<IRequestChannel>(CreateBinding(), new EndpointAddress("http://www.flickr.com/services/soap/"))) {
        using (IRequestChannel channel = factory.CreateChannel()) {
          StringReader body = new StringReader(String.Format(@"<x:FlickrRequest xmlns:x='urn:flickr'>
                                                               <api_key>{0}</api_key>
                                                               <format>soap2</format>
                                                               {1}
                                                             </x:FlickrRequest>", _apiKey, xml));
          XmlTextReader reader = new XmlTextReader(body);
          Message message = Message.CreateMessage(MessageVersion.Soap12Addressing1, "*", reader);
          Message response = channel.Request(message);
          XmlDictionaryReader responseReader = response.GetReaderAtBodyContents();
          return responseReader.ReadOuterXml();
        }
      }
    }
  }
}