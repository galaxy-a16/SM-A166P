.class public Lcom/android/server/accessibility/UiAutomationManager$1;
.super Ljava/lang/Object;
.source "UiAutomationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$fgetmUiAutomationServiceOwner(Lcom/android/server/accessibility/UiAutomationManager;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$fputmUiAutomationServiceOwner(Lcom/android/server/accessibility/UiAutomationManager;Landroid/os/IBinder;)V

    .line 71
    iget-object p0, p0, Lcom/android/server/accessibility/UiAutomationManager$1;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {p0}, Lcom/android/server/accessibility/UiAutomationManager;->-$$Nest$mdestroyUiAutomationService(Lcom/android/server/accessibility/UiAutomationManager;)V

    const-string p0, "UiAutomationManager"

    const-string v0, "UiAutomation service owner died"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
