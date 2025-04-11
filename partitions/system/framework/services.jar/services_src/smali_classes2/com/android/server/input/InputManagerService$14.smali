.class public Lcom/android/server/input/InputManagerService$14;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public static synthetic $r8$lambda$HoWr-q4q8OdmuaHk6ZQPz3rQrpw(Lcom/android/server/input/InputManagerService$14;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/input/InputManagerService$14;->lambda$onReceive$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 5994
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$1()V
    .locals 0

    .line 6022
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->showingTouchSensitivityNotificationIfNeeded()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 5997
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 5998
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5999
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmBootCompleted(Lcom/android/server/input/InputManagerService;Z)V

    .line 6000
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IFW_KEY_COUNTER:Z

    if-eqz p1, :cond_0

    .line 6001
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmInputKeyCounter(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputKeyCounter;->kickOldies(Landroid/content/Context;)V

    .line 6014
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNotifyPogoKeyboardNotMatchPending(Lcom/android/server/input/InputManagerService;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 6015
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mnotifyPogoKeyboardNotMatch(Lcom/android/server/input/InputManagerService;)V

    .line 6016
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmNotifyPogoKeyboardNotMatchPending(Lcom/android/server/input/InputManagerService;Z)V

    .line 6018
    :cond_1
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmPaperCoverNotificationPending(Lcom/android/server/input/InputManagerService;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6020
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmPaperCoverNotificationPending(Lcom/android/server/input/InputManagerService;Z)V

    .line 6021
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$14;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputManagerService$InputManagerHandler;

    move-result-object p1

    new-instance p2, Lcom/android/server/input/InputManagerService$14$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/input/InputManagerService$14$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputManagerService$14;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
