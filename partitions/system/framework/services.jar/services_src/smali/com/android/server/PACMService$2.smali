.class public Lcom/android/server/PACMService$2;
.super Landroid/content/BroadcastReceiver;
.source "PACMService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcast received:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PACMService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.aircommandmanager.START_LOCAL_SOCKET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "GalaxyDiag app start"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    const-string p2, "com.samsung.android.app.mobiledoctor"

    invoke-static {p1, p2}, Lcom/android/server/PACMService;->-$$Nest$misPackageInstalled(Lcom/android/server/PACMService;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    const-string/jumbo p2, "kr.co.avad.diagnostictool"

    invoke-static {p1, p2}, Lcom/android/server/PACMService;->-$$Nest$misPackageInstalled(Lcom/android/server/PACMService;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    const-string p2, "com.samsung.android.app.mobiledoctor.ve"

    invoke-static {p1, p2}, Lcom/android/server/PACMService;->-$$Nest$misPackageInstalled(Lcom/android/server/PACMService;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/PACMService$2;->this$0:Lcom/android/server/PACMService;

    const-string p1, "com.samsung.android.app.repaircal"

    invoke-static {p0, p1}, Lcom/android/server/PACMService;->-$$Nest$misPackageInstalled(Lcom/android/server/PACMService;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    goto :goto_0

    :cond_1
    const-string p0, "com.samsung.android.aircommandmanager.STOP_LOCAL_SOCKET"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "GalaxyDiag app end"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/PACMService;->mGalaxyDiag:Z

    :cond_2
    :goto_0
    return-void
.end method
