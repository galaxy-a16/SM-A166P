.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$4;
.super Landroid/app/TaskStackListener;
.source "GameServiceProviderInstanceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public static synthetic $r8$lambda$5Ad4qEBt0oMF_P8TEhhOse0U-84(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->lambda$onTaskFocusChanged$2(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$BgHowQVBgUfPT-wWBgkwjJHcOyY(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->lambda$onTaskRemoved$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yr3P78RfHRAlJCSdZgnh6_o62cI(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;ILandroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->lambda$onTaskCreated$0(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTaskCreated$0(ILandroid/content/ComponentName;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monTaskCreated(Lcom/android/server/app/GameServiceProviderInstanceImpl;ILandroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic lambda$onTaskFocusChanged$2(IZ)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monTaskFocusChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;IZ)V

    return-void
.end method

.method private synthetic lambda$onTaskRemoved$1(I)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monTaskRemoved(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$4;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$4;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
