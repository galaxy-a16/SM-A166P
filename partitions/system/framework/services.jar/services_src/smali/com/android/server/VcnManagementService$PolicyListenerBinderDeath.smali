.class public Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;
.super Ljava/lang/Object;
.source "VcnManagementService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;)Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/VcnManagementService;Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 950
    iput-object p2, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 955
    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app died without removing VcnUnderlyingNetworkPolicyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->this$0:Lcom/android/server/VcnManagementService;

    iget-object p0, p0, Lcom/android/server/VcnManagementService$PolicyListenerBinderDeath;->mListener:Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;

    invoke-virtual {v0, p0}, Lcom/android/server/VcnManagementService;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V

    return-void
.end method
