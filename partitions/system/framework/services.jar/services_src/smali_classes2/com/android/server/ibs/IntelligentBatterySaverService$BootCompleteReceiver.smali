.class public Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;


# direct methods
.method public static synthetic $r8$lambda$t3PUrtsqU54v7XpwA0L6oqNwsss(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->lambda$onReceive$0(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .locals 2

    .line 234
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 235
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .locals 0

    .line 248
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->sendBootCompletedMessage()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_BOOT_COMPLETED broadcast received: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IntelligentBatterySaverService"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->registerScpm()V

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 249
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmServiceHandler(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
