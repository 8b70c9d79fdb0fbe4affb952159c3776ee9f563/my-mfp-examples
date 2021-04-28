= WMTS REST Layer example = 

Using:
https://ge.ch/sitgags2/rest/services/RASTER/ORTHOPHOTOS_2018/MapServer/WMTS/1.0.0/WMTSCapabilities.xml

<ResourceURL format="image/jpgpng" resourceType="tile" template="https://ge.ch/sitgags2/rest/services/RASTER/ORTHOPHOTOS_2018/MapServer/WMTS/tile/1.0.0/RASTER_ORTHOPHOTOS_2018/{Style}/{TileMatrixSet}/{TileMatrix}/{TileRow}/{TileCol}"/>


Somehow, doesn't work. Giving up, takes too much time.

For now, I have:

        
        
        
WARNING: An illegal reflective access operation has occurred
WARNING: Illegal reflective access by org.geotools.image.ImageWorker (file:/home/bhoefling/.m2/repository/org/geotools/gt-coverage/24.2/gt-coverage-24.2.jar) to constructor com.sun.imageio.plugins.jpeg.JPEGImageWriterSpi()
WARNING: Please consider reporting this to the maintainers of org.geotools.image.ImageWorker
WARNING: Use --illegal-access=warn to enable warnings of further illegal reflective access operations
WARNING: All illegal access operations will be denied in a future release
Apr 06, 2021 5:49:44 PM org.geotools.image.ImageWorker <clinit>
INFO: Warp/affine reduction enabled: true


17:53:22.389 [ForkJoinPool-1-worker-229] INFO  o.m.p.processor.ProcessorGraphNode - Time taken to run processor: 'class org.mapfish.print.processor.map.CreateMapProcessor' was 382725 ms
17:54:17.449 [main] ERROR n.s.j.engine.fill.JRFillSubreport - Fill 1: exception
java.lang.OutOfMemoryError: Required array size too large
	at java.base/java.nio.file.Files.readAllBytes(Files.java:3211)
	at org.mapfish.print.servlet.fileloader.AbstractFileConfigFileLoader.loadFile(AbstractFileConfigFileLoader.java:118)
	at org.mapfish.print.servlet.fileloader.ConfigFileLoaderManager.loadFile(ConfigFileLoaderManager.java:134)
	at org.mapfish.print.config.Configuration.loadFile(Configuration.java:562)
	at org.mapfish.print.http.ConfigFileResolvingHttpRequestFactory$ConfigFileResolvingRequest.executeInternal(ConfigFileResolvingHttpRequestFactory.java:130)
	at org.springframework.http.client.AbstractClientHttpRequest.execute(AbstractClientHttpRequest.java:53)
	at org.mapfish.print.output.MapfishPrintRepositoryService.getInputStream(MapfishPrintRepositoryService.java:50)
	at org.mapfish.print.output.MapfishPrintRepositoryService.getResource(MapfishPrintRepositoryService.java:72)
	at net.sf.jasperreports.repo.RepositoryService.getResource(RepositoryService.java:50)
	at net.sf.jasperreports.repo.RepositoryUtil.findInputStream(RepositoryUtil.java:195)
	at net.sf.jasperreports.repo.RepositoryUtil.getBytesFromLocation(RepositoryUtil.java:211)
	at net.sf.jasperreports.renderers.util.RendererUtil.getNonLazyRenderable(RendererUtil.java:179)
	at net.sf.jasperreports.engine.fill.JRFillImage.evaluateImage(JRFillImage.java:543)
	at net.sf.jasperreports.engine.fill.JRFillImage.evaluate(JRFillImage.java:451)
	at net.sf.jasperreports.engine.fill.JRFillElementContainer.evaluate(JRFillElementContainer.java:383)
	at net.sf.jasperreports.engine.fill.JRFillBand.evaluate(JRFillBand.java:548)
	at net.sf.jasperreports.engine.fill.JRVerticalFiller.fillNoData(JRVerticalFiller.java:2821)
	at net.sf.jasperreports.engine.fill.JRVerticalFiller.fillReport(JRVerticalFiller.java:198)
	at net.sf.jasperreports.engine.fill.JRBaseFiller.fill(JRBaseFiller.java:621)
	at net.sf.jasperreports.engine.fill.JRFillSubreport.fillSubreport(JRFillSubreport.java:834)
	at net.sf.jasperreports.engine.fill.JRSubreportRunnable.run(JRSubreportRunnable.java:61)
	at net.sf.jasperreports.engine.fill.AbstractThreadSubreportRunner.run(AbstractThreadSubreportRunner.java:221)
	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
	at java.base/java.lang.Thread.run(Thread.java:834)
Exception in thread "main" net.sf.jasperreports.engine.JRRuntimeException: java.lang.OutOfMemoryError: Required array size too large
	at net.sf.jasperreports.engine.fill.JRFillSubreport.prepare(JRFillSubreport.java:969)
	at net.sf.jasperreports.engine.fill.JRFillElementContainer.prepareElements(JRFillElementContainer.java:542)
	at net.sf.jasperreports.engine.fill.JRFillBand.fill(JRFillBand.java:453)
	at net.sf.jasperreports.engine.fill.JRFillBand.fill(JRFillBand.java:428)
	at net.sf.jasperreports.engine.fill.JRVerticalFiller.fillTitle(JRVerticalFiller.java:327)
	at net.sf.jasperreports.engine.fill.JRVerticalFiller.fillReportStart(JRVerticalFiller.java:258)
	at net.sf.jasperreports.engine.fill.JRVerticalFiller.fillReport(JRVerticalFiller.java:110)
	at net.sf.jasperreports.engine.fill.JRBaseFiller.fill(JRBaseFiller.java:621)
	at net.sf.jasperreports.engine.fill.BaseReportFiller.fill(BaseReportFiller.java:433)
	at net.sf.jasperreports.engine.fill.JRFiller.fill(JRFiller.java:162)
	at net.sf.jasperreports.engine.JasperFillManager.fill(JasperFillManager.java:651)
	at org.mapfish.print.output.AbstractJasperReportOutputFormat.getJasperPrint(AbstractJasperReportOutputFormat.java:221)
	at org.mapfish.print.output.AbstractJasperReportOutputFormat.print(AbstractJasperReportOutputFormat.java:94)
	at org.mapfish.print.MapPrinter.print(MapPrinter.java:133)
	at org.mapfish.print.cli.Main.run(Main.java:201)
	at org.mapfish.print.cli.Main.runMain(Main.java:111)
	at org.mapfish.print.cli.Main.main(Main.java:65)
Caused by: java.lang.OutOfMemoryError: Required array size too large
	at java.base/java.nio.file.Files.readAllBytes(Files.java:3211)
	at org.mapfish.print.servlet.fileloader.AbstractFileConfigFileLoader.loadFile(AbstractFileConfigFileLoader.java:118)
	at org.mapfish.print.servlet.fileloader.ConfigFileLoaderManager.loadFile(ConfigFileLoaderManager.java:134)
	at org.mapfish.print.config.Configuration.loadFile(Configuration.java:562)
	at org.mapfish.print.http.ConfigFileResolvingHttpRequestFactory$ConfigFileResolvingRequest.executeInternal(ConfigFileResolvingHttpRequestFactory.java:130)
	at org.springframework.http.client.AbstractClientHttpRequest.execute(AbstractClientHttpRequest.java:53)
	at org.mapfish.print.output.MapfishPrintRepositoryService.getInputStream(MapfishPrintRepositoryService.java:50)
	at org.mapfish.print.output.MapfishPrintRepositoryService.getResource(MapfishPrintRepositoryService.java:72)
	at net.sf.jasperreports.repo.RepositoryService.getResource(RepositoryService.java:50)
	at net.sf.jasperreports.repo.RepositoryUtil.findInputStream(RepositoryUtil.java:195)
	at net.sf.jasperreports.repo.RepositoryUtil.getBytesFromLocation(RepositoryUtil.java:211)
	at net.sf.jasperreports.renderers.util.RendererUtil.getNonLazyRenderable(RendererUtil.java:179)
	at net.sf.jasperreports.engine.fill.JRFillImage.evaluateImage(JRFillImage.java:543)
	at net.sf.jasperreports.engine.fill.JRFillImage.evaluate(JRFillImage.java:451)
	at net.sf.jasperreports.engine.fill.JRFillElementContainer.evaluate(JRFillElementContainer.java:383)
	at net.sf.jasperreports.engine.fill.JRFillBand.evaluate(JRFillBand.java:548)
	at net.sf.jasperreports.engine.fill.JRVerticalFiller.fillNoData(JRVerticalFiller.java:2821)
	at net.sf.jasperreports.engine.fill.JRVerticalFiller.fillReport(JRVerticalFiller.java:198)
	at net.sf.jasperreports.engine.fill.JRBaseFiller.fill(JRBaseFiller.java:621)
	at net.sf.jasperreports.engine.fill.JRFillSubreport.fillSubreport(JRFillSubreport.java:834)
	at net.sf.jasperreports.engine.fill.JRSubreportRunnable.run(JRSubreportRunnable.java:61)
	at net.sf.jasperreports.engine.fill.AbstractThreadSubreportRunner.run(AbstractThreadSubreportRunner.java:221)
	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)
	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)
	at java.base/java.lang.Thread.run(Thread.java:834)

> Task :core:print FAILED

FAILURE: Build failed with an exception.
