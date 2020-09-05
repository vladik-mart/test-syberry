<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="Test_tasks_for_Support_Engineer_0"></a>Test tasks for Support Engineer</h1>
<p class="has-line-data" data-line-start="2" data-line-end="3">The purpose of the task is to write a program that will fetch the information about the employees time reports from the example. Database and for each day of the week calculate the top 3 employees who have the highest average number of working hours reported on the corresponding weekday.</p>
<p class="has-line-data" data-line-start="4" data-line-end="5">The following is a list of requirements for the program:</p>
<ul>
<li class="has-line-data" data-line-start="6" data-line-end="7">The output shall include the names of the people and their average working hours in parenthesis for that day rounded up to the 2 decimal points</li>
<li class="has-line-data" data-line-start="7" data-line-end="8">The output shall include line items for all 7 weekdays</li>
<li class="has-line-data" data-line-start="8" data-line-end="9">The program shall work correctly for the edge cases (for example, less than 3 employees in the database or no time reports for the day, etc.)</li>
<li class="has-line-data" data-line-start="9" data-line-end="10">The program shall output directly to the console with the formatting as in the example</li>
<li class="has-line-data" data-line-start="10" data-line-end="11">The program shall have a clear configuration section for the database connection</li>
<li class="has-line-data" data-line-start="11" data-line-end="12">The database tables and columns shall be named as defined in the example</li>
<li class="has-line-data" data-line-start="12" data-line-end="13">A sample SQL dump of the database for the testing may be provided together with the program but this is optional</li>
<li class="has-line-data" data-line-start="13" data-line-end="15">The program shall be launchable from the console</li>
</ul>
<p class="has-line-data" data-line-start="15" data-line-end="16">Example of the output:</p>
<pre><code class="has-line-data" data-line-start="18" data-line-end="21" class="language-sh">| Monday | John (<span class="hljs-number">4.45</span> hours), Jane (<span class="hljs-number">7.54</span> hours), Alex (<span class="hljs-number">3.5</span> hours) | 
| Tuesday| Jane (<span class="hljs-number">4.54</span> hours), Alex (<span class="hljs-number">7.5</span> hours)                    | 
</code></pre>
<p class="has-line-data" data-line-start="22" data-line-end="23">The following is an example of the database tables structure:</p>
<pre><code class="has-line-data" data-line-start="24" data-line-end="30" class="language-sh">`employees` 
| id | name | 
------------- 
| <span class="hljs-number">42</span> | John | 
| <span class="hljs-number">43</span> | Jane | 
</code></pre>
<pre><code class="has-line-data" data-line-start="31" data-line-end="39" class="language-sh">`time_reports` 
| id | employee_id | hours |    date   | 
--------------------------------------- 
|  <span class="hljs-number">1</span> |      <span class="hljs-number">42</span>     |  <span class="hljs-number">4.5</span>  | <span class="hljs-number">12</span>/<span class="hljs-number">1</span>/<span class="hljs-number">2020</span> | 
|  <span class="hljs-number">2</span> |      <span class="hljs-number">42</span>     |  <span class="hljs-number">7.0</span>  | <span class="hljs-number">12</span>/<span class="hljs-number">2</span>/<span class="hljs-number">2020</span> | 
|  <span class="hljs-number">3</span> |      <span class="hljs-number">43</span>     |  <span class="hljs-number">5.5</span>  | <span class="hljs-number">12</span>/<span class="hljs-number">1</span>/<span class="hljs-number">2020</span> |
|  <span class="hljs-number">4</span> |      <span class="hljs-number">43</span>     |  <span class="hljs-number">6.0</span>  | <span class="hljs-number">12</span>/<span class="hljs-number">2</span>/<span class="hljs-number">2020</span> | 
</code></pre>
<h3 class="code-line" data-line-start=40 data-line-end=41 ><a id="Installation_40"></a>Installation</h3>
<pre><code class="has-line-data" data-line-start="44" data-line-end="48" class="language-sh">$ <span class="hljs-built_in">cd</span> <span class="hljs-variable">$your_path</span>
$ git <span class="hljs-built_in">clone</span> https://github.com/vladik-mart/<span class="hljs-built_in">test</span>-syberry.git
$ composer update
</code></pre>

