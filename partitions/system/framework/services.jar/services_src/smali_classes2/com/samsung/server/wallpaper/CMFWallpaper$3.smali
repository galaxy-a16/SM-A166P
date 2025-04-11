.class public Lcom/samsung/server/wallpaper/CMFWallpaper$3;
.super Ljava/lang/Thread;
.source "CMFWallpaper.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ColorCodePollingThread run()"

    const-string v1, "CMFWallpaper"

    .line 196
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    const-string/jumbo v2, "ril.product_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)V

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorCodePollingThread sleep(1000) count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 202
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "InterruptedException occurred"

    .line 204
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;I)V

    .line 207
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$mextractColorCodeFromProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") retrieved!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmAlternativeCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$mgetProperColorCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$msetCMFColorCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$msetDeviceColor(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$misOperatorWallpaper(Lcom/samsung/server/wallpaper/CMFWallpaper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmService(Lcom/samsung/server/wallpaper/CMFWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->updateDefaultWallpaper()V

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmColorCodePollingThread(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/Thread;)V

    return-void
.end method
