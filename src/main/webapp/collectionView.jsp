<!--
Copyright 2016 Google Inc.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
-->
<!-- [START view] -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="container">
  <h3>Collection</h3>
  <div class="btn-group">
    <a href="/deleteCollection?id=${collection.id}" class="btn btn-danger btn-sm">
      <i class="glyphicon glyphicon-trash"></i>
      Delete collection
    </a>

    <a href="/associate?id=${collection.id}" class="btn btn-success btn-sm">
          <i class="glyphicon glyphicon-plus"></i>
          Add Person to Collection
        </a>
  </div>

  <div class="media">
    <div class="media-left">
      <img class="collection-image" height="200" src="${fn:escapeXml(not empty collection.imageUrl?collection.imageUrl:'http://placekitten.com/g/128/192')}">
    </div>
    <div class="media-body">
      <h4 class="collection-name">
        ${fn:escapeXml(collection.name)}
      </h4>
      <p class="collection-description">${fn:escapeXml(collection.description)}</p>
      <small class="collection-added-by">Added by
        ${fn:escapeXml(not empty collection.createdBy?collection.createdBy:'Anonymous')}</small>
    </div>
  </div>

  <c:forEach items="${persons}" var="person">
  <div class="media">
    <a href="/read?id=${person.id}">
      <div class="media-left">
        <img alt="ahhh" height="200"src="${fn:escapeXml(not empty person.imageUrl?person.imageUrl:'http://placekitten.com/g/128/192')}">
      </div>
      <div class="media-body">
        <h4 class="person-first">
          ${fn:escapeXml(person.first)}
        </h4>
        <h5 class="person-last">${fn:escapeXml(not empty person.last?person.last:'Unknown')}</h5>
        <p class="person-description">${fn:escapeXml(person.description)}</p>
        <p class="person-jobTitle">${fn:escapeXml(person.jobTitle)}</p>
        <small class="person-added-by">Added by
          ${fn:escapeXml(not empty person.createdBy?person.createdBy:'Anonymous')}</small>
      </div>
    </a>
  </div>
  </c:forEach>

</div>
<!-- [END view] -->
