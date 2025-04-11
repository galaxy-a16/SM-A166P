.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;
.super Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;
.source "KnoxMUMContainerPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .line 6052
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method


# virtual methods
.method public onNewUserCreated(I)V
    .locals 0

    .line 6055
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->onNewUserCreated(I)V

    return-void
.end method

.method public setAppSeparationOwnership(Lcom/samsung/android/knox/container/ContainerCreationParams;)V
    .locals 2

    .line 6065
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setAppSeparationOwnership."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6066
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I

    return-void
.end method
