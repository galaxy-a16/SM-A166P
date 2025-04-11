.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "EdgeLightingPolicyManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-static {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fputmVrMode(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V

    return-void
.end method
