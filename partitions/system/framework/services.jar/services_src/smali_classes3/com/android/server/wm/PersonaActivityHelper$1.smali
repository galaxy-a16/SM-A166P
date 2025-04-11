.class public Lcom/android/server/wm/PersonaActivityHelper$1;
.super Landroid/app/TaskStackListener;
.source "PersonaActivityHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p0, p2}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fputmLastPIPModeActivityUserId(Lcom/android/server/wm/PersonaActivityHelper;I)V

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {v0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastPIPModeActivityUserId(Lcom/android/server/wm/PersonaActivityHelper;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$1;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastReceivedResumedActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    :cond_0
    return-void
.end method
