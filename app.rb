%w{ rubygems sinatra helpers }.each do |lib|
  require lib
end

helpers do
  include Helpers
end

get '/' do
  erb <<-HTMLIPSUM
  <em>HTML Ipsum - <a href="http://html-ipsum.com">html-ipsum.com</a></em>
  
  <h1>HTML Ipsum Presents</h1>

  <p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>

  <h2>Header Level 2 - Ordered List</h2>

  <ol>
     <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
     <li>Aliquam tincidunt mauris eu risus.</li>
  </ol>

  <blockquote><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p></blockquote>

  <h3>Header Level 3 - Unordered List</h3>

  <ul>
     <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
     <li>Aliquam tincidunt mauris eu risus.</li>
  </ul>

  <pre><code>
  #header h1 a { 
    display: block; 
    width: 300px; 
    height: 80px; 
  }
  </code></pre>
  
  <h4>Header Level 4</h4>
  
  <table>
    <thead>
      <tr>
        <th>Table Head 1</th>
        <th>Table Head 2</th>
        <th>Table Head 3</th>
        <th>Table Head 4</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
        <td>Cell</td>
      </tr>
      <tr>
        <td>cell</td>
        <td>cell</td>
        <td>cell</td>
        <td>cell</td>
      </tr>
      <tr>
        <td>CELL</td>
        <td>CELL</td>
        <td>CELL</td>
        <td>CELL</td>
      </tr>
    </tbody>
  </table>
  
  <h5>Header Level 5</h5>
  
  <form action="#" method="post">
      <div>
           <label for="name">Text Input:</label>
           <input type="text" name="name" id="name" value="" tabindex="1" />
      </div>

      <div>
           <h4>Radio Button Choice</h4>

           <label for="radio-choice-1">Choice 1</label>
           <input type="radio" name="radio-choice-1" id="radio-choice-1" tabindex="2" value="choice-1" />

       <label for="radio-choice-2">Choice 2</label>
           <input type="radio" name="radio-choice-2" id="radio-choice-2" tabindex="3" value="choice-2" />
      </div>

    <div>
      <label for="select-choice">Select Dropdown Choice:</label>
      <select name="select-choice" id="select-choice">
        <option value="Choice 1">Choice 1</option>
        <option value="Choice 2">Choice 2</option>
        <option value="Choice 3">Choice 3</option>
      </select>
    </div>

    <div>
      <label for="textarea">Textarea:</label>
      <textarea cols="40" rows="8" name="textarea" id="textarea"></textarea>
    </div>

    <div>
        <label for="checkbox">Checkbox:</label>
      <input type="checkbox" name="checkbox" id="checkbox" />
      </div>

    <div>
        <input type="submit" value="Submit" />
      </div>
  </form>
  
  <h6>Header Level 6</h6>
  
  <dl>
     <dt>Definition list</dt>
     <dd>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
  </dd>
     <dt>Lorem ipsum dolor sit amet</dt>
     <dd>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</dd>
  </dl>
  HTMLIPSUM
end
