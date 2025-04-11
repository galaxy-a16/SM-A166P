.class public Lcom/android/server/wm/PersonaActivityHelper$2;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PersonaActivityHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v0, v0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {v1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastResumedSFActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {v1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastResumedSFActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token.toString()  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaActivityHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastResumedSFActivity getPackageName  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {v3}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastResumedSFActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastResumedSFActivity getShortClassName  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {v3}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastResumedSFActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {v1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastResumedSFActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {v0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastResumedSFActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastReceivedResumedActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 156
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastResumedSFActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$2;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastReceivedResumedActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mcheckAndLockSecureFolder(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    :goto_0
    return-void
.end method
