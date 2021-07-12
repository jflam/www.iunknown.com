(function() {
  var findDeferredContent, objectToQueryParam;

  self.onmessage = function(event) {
    var data;
    data = JSON.parse(event.data);
    return findDeferredContent(0, data);
  };

  objectToQueryParam = function(object) {
    var key, value;
    return ((function() {
      var _results;
      _results = [];
      for (key in object) {
        value = object[key];
        _results.push("" + key + "=" + (encodeURIComponent(value)));
      }
      return _results;
    })()).join("&");
  };

  findDeferredContent = function(retries, data) {
    var request;
    request = new XMLHttpRequest;
    request.open("GET", "" + data.url + "?" + (objectToQueryParam(data)), true);
    request.onreadystatechange = function(event) {
      if (request.readyState === 4) {
        if (request.status === 200) {
          return postMessage(request.responseText);
        } else if (retries < 3) {
          retries++;
          return findDeferredContent(retries, data);
        }
      }
    };
    return request.send(null);
  };

}).call(this);
