.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService;->$r8$lambda$NgSqB_m__vTFdiCuVZRfr930jVc(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
