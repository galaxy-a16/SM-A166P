.class public Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmGesturewakeup(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmGesturewakeup(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()Z

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmGesturewakeup(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GestureWakeup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_setup_complete"

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmColorInversionStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmColorInversionStateUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmColorInversionStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$ColorInversionStateContentObserver;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmSetupCompleteStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmSetupCompleteUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmSetupCompleteStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SetupCompleteStateContentObserver;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmDaltonizerEnabledStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmDisplayDaltonizerEnabledUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmDaltonizerEnabledStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerEnabledStateContentObserver;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance p2, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmDaltonizerStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmDisplayDaltonizerUri(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmDaltonizerStateContentObserver(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$DaltonizerStateContentObserver;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$A11YBrocastReceiver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    :cond_4
    :goto_0
    return-void
.end method
