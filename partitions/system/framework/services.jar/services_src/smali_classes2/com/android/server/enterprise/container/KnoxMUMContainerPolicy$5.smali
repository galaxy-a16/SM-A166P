.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;
.super Ljava/lang/Thread;
.source "KnoxMUMContainerPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field public final synthetic val$callingUid:I

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V
    .locals 0

    .line 3522
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3527
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmActivityManager(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmActivityManager(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 3532
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3534
    :catch_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    .line 3535
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/4 v2, 0x0

    .line 3534
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z

    return-void
.end method
