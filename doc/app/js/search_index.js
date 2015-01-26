var search_data = {"index":{"searchIndex":["alert","alertscontroller","applicationcontroller","backupdaemon","cleardaemon","clearinvoker","flood","floodinvoker","floodscontroller","indexcontroller","indexhelper","polldaemon","pool","poolscontroller","source","sourceod","sourcescontroller","sourceshelper","wfmalert","wfmalertscontroller","wfmalertshelper","create()","create()","destroy()","destroy()","destroy()","destroy()","download_pdf()","edit()","edit()","index()","index()","index()","index()","index()","index()","new()","new()","new()","perform()","perform()","perform()","perform()","perform()","perform()","show()","show()","show()","show()","show()","source()","update()","update()","update()","readme"],"longSearchIndex":["alert","alertscontroller","applicationcontroller","backupdaemon","cleardaemon","clearinvoker","flood","floodinvoker","floodscontroller","indexcontroller","indexhelper","polldaemon","pool","poolscontroller","source","sourceod","sourcescontroller","sourceshelper","wfmalert","wfmalertscontroller","wfmalertshelper","floodscontroller#create()","poolscontroller#create()","alertscontroller#destroy()","floodscontroller#destroy()","poolscontroller#destroy()","wfmalertscontroller#destroy()","indexcontroller#download_pdf()","floodscontroller#edit()","wfmalertscontroller#edit()","alertscontroller#index()","floodscontroller#index()","indexcontroller#index()","poolscontroller#index()","sourcescontroller#index()","wfmalertscontroller#index()","floodscontroller#new()","poolscontroller#new()","wfmalertscontroller#new()","backupdaemon::perform()","cleardaemon::perform()","clearinvoker::perform()","floodinvoker::perform()","polldaemon::perform()","sourceod::perform()","alertscontroller#show()","floodscontroller#show()","poolscontroller#show()","sourcescontroller#show()","wfmalertscontroller#show()","floodscontroller#source()","floodscontroller#update()","poolscontroller#update()","wfmalertscontroller#update()",""],"info":[["Alert","","Alert.html","","<p>The Alert table is currently configured to hold ESO alerts.  This is the\nclass for Alerts- any class …\n"],["AlertsController","","AlertsController.html","","<p>This file controls the flow of data to and between the various /alerts/\nroutes.  For instance, the\n\n<pre>index ...</pre>\n"],["ApplicationController","","ApplicationController.html","",""],["BackupDaemon","","BackupDaemon.html","",""],["ClearDaemon","","ClearDaemon.html","","<p>THIS JOB IS CURRENTLY DISABLED AND NONFUNCTIONAL- NEEDS DEBUGGING\n"],["ClearInvoker","","ClearInvoker.html","",""],["Flood","","Flood.html","","<p>A Flood is a collection of Pools with a Bind to a table.\n<p>Concept is this:\n\n<pre>A department (reporting unit) ...</pre>\n"],["FloodInvoker","","FloodInvoker.html","",""],["FloodsController","","FloodsController.html","","<p>This file controls the flow of data to and between the various /floods/\nroutes.  For instance, the\n\n<pre>index ...</pre>\n"],["IndexController","","IndexController.html","","<p>This file controls the flow of data to and between the various root routes.\nFor instance, the\n\n<pre>index action ...</pre>\n"],["IndexHelper","","IndexHelper.html","",""],["PollDaemon","","PollDaemon.html","",""],["Pool","","Pool.html","","<p>Pools are simply gmail addresses which are either forwarded the alerts to\nbe reported on or are added …\n"],["PoolsController","","PoolsController.html","","<p>This file controls the flow of data to and between the various /pools/\nroutes.  For instance, the\n\n<pre>index ...</pre>\n"],["Source","","Source.html","","<p>Sources are records for email adresses which actually send the alerts to\nthe Pool.\n<p>Not very useful if …\n"],["SourceOd","","SourceOd.html","",""],["SourcesController","","SourcesController.html","","<p>This file controls the flow of data to and between the various /sources/\nroutes.  For instance, the\n\n<pre>index ...</pre>\n"],["SourcesHelper","","SourcesHelper.html","",""],["WfmAlert","","WfmAlert.html","","<p>The WFMAlert table is currently configured to hold WFMR alerts.  This is\nthe class for WFMAlerts- any …\n"],["WfmAlertsController","","WfmAlertsController.html","","<p>This file controls the flow of data to and between the various /wfm_alerts/\nroutes.  For instance, the …\n"],["WfmAlertsHelper","","WfmAlertsHelper.html","",""],["create","FloodsController","FloodsController.html#method-i-create","()","<p>POST /floods POST /floods.json\n"],["create","PoolsController","PoolsController.html#method-i-create","()","<p>POST /pools POST /pools.json\n"],["destroy","AlertsController","AlertsController.html#method-i-destroy","()","<p>DELETE /alerts/1 DELETE /alerts/1.json\n"],["destroy","FloodsController","FloodsController.html#method-i-destroy","()","<p>DELETE /floods/1 DELETE /floods/1.json\n"],["destroy","PoolsController","PoolsController.html#method-i-destroy","()","<p>DELETE /pools/1 DELETE /pools/1.json\n"],["destroy","WfmAlertsController","WfmAlertsController.html#method-i-destroy","()","<p>DELETE /wfm_alerts/1 DELETE /wfm_alerts/1.json\n"],["download_pdf","IndexController","IndexController.html#method-i-download_pdf","()",""],["edit","FloodsController","FloodsController.html#method-i-edit","()","<p>GET /floods/1/edit\n"],["edit","WfmAlertsController","WfmAlertsController.html#method-i-edit","()","<p>GET /wfm_alerts/1/edit\n"],["index","AlertsController","AlertsController.html#method-i-index","()","<p>GET /alerts GET /alerts.json\n"],["index","FloodsController","FloodsController.html#method-i-index","()","<p>GET /floods GET /floods.json\n"],["index","IndexController","IndexController.html#method-i-index","()",""],["index","PoolsController","PoolsController.html#method-i-index","()","<p>GET /pools GET /pools.json\n"],["index","SourcesController","SourcesController.html#method-i-index","()","<p>GET /sources GET /sources.json\n"],["index","WfmAlertsController","WfmAlertsController.html#method-i-index","()","<p>GET /wfm_alerts GET /wfm_alerts.json\n"],["new","FloodsController","FloodsController.html#method-i-new","()","<p>GET /floods/new\n"],["new","PoolsController","PoolsController.html#method-i-new","()","<p>GET /pools/new\n"],["new","WfmAlertsController","WfmAlertsController.html#method-i-new","()","<p>GET /wfm_alerts/new\n"],["perform","BackupDaemon","BackupDaemon.html#method-c-perform","()","<p>Jobs must have a self.perform method (at minimum), which is called when the\njob is picked up by a  worker …\n"],["perform","ClearDaemon","ClearDaemon.html#method-c-perform","(id)",""],["perform","ClearInvoker","ClearInvoker.html#method-c-perform","()","<p>Jobs must have a self.perform method (at minimum), which is called when the\njob is picked up by a  worker …\n"],["perform","FloodInvoker","FloodInvoker.html#method-c-perform","()","<p>Jobs must have a self.perform method (at minimum), which is called when the\njob is picked up by a  worker …\n"],["perform","PollDaemon","PollDaemon.html#method-c-perform","(idee, f_bind)","<p>apparently this job doesn&#39;t like having id passed to it.  Hence, idee.\nf_bind is the bind string …\n"],["perform","SourceOd","SourceOd.html#method-c-perform","(flood_id)",""],["show","AlertsController","AlertsController.html#method-i-show","()","<p>GET /alerts/1 GET /alerts/1.json\n"],["show","FloodsController","FloodsController.html#method-i-show","()","<p>GET /floods/1 GET /floods/1.json\n"],["show","PoolsController","PoolsController.html#method-i-show","()","<p>GET /pools/1 GET /pools/1.json\n"],["show","SourcesController","SourcesController.html#method-i-show","()","<p>GET /sources/1 GET /sources/1.json\n"],["show","WfmAlertsController","WfmAlertsController.html#method-i-show","()","<p>GET /wfm_alerts/1 GET /wfm_alerts/1.json\n"],["source","FloodsController","FloodsController.html#method-i-source","()",""],["update","FloodsController","FloodsController.html#method-i-update","()","<p>PATCH/PUT /floods/1 PATCH/PUT /floods/1.json\n"],["update","PoolsController","PoolsController.html#method-i-update","()","<p>PATCH/PUT /pools/1 PATCH/PUT /pools/1.json\n"],["update","WfmAlertsController","WfmAlertsController.html#method-i-update","()","<p>PATCH/PUT /wfm_alerts/1 PATCH/PUT /wfm_alerts/1.json\n"],["README","","README_rdoc.html","","<p>README\n<p>10.0.19.172:3001 is where scrivener lives- you cn download the latest db\nfrom the link there /alerts …\n"]]}}