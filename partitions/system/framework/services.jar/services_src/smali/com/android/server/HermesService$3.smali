.class public Lcom/android/server/HermesService$3;
.super Landroid/content/BroadcastReceiver;
.source "HermesService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesService;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 356
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "HERMES#Service"

    if-eqz p1, :cond_0

    .line 357
    invoke-static {}, Lcom/android/server/HermesService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 358
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "security.securenvm.available"

    .line 359
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 360
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-virtual {p0}, Lcom/android/server/HermesService;->hermesSecnvmPowerOn()I

    move-result p0

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notify key guard showing to hermesd ret : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 364
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ACTION_DATE_CHANGED intent called"

    .line 365
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p1, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-static {p1}, Lcom/android/server/HermesService;->-$$Nest$mTransmitCollectedDataToServer(Lcom/android/server/HermesService;)V

    .line 367
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-static {p0}, Lcom/android/server/HermesService;->-$$Nest$mCollectSkeymasterDumpThread(Lcom/android/server/HermesService;)V

    goto :goto_0

    :cond_1
    const-string p1, "com.sec.android.intent.action.TEST_TRIGGER"

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Test intent trigger called"

    .line 369
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object p0, p0, Lcom/android/server/HermesService$3;->this$0:Lcom/android/server/HermesService;

    invoke-static {p0}, Lcom/android/server/HermesService;->-$$Nest$mCollectSkeymasterDumpThread(Lcom/android/server/HermesService;)V

    :cond_2
    :goto_0
    return-void
.end method
