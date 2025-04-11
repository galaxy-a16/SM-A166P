.class public Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "EdgeLightingManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Z

    move-result p1

    if-ne p2, p1, :cond_1

    return-void

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fputmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;Z)V

    .line 116
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmEdgeLightingPolicyManager(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->-$$Nest$fgetmRinging(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->setRinging(Z)V

    return-void
.end method
