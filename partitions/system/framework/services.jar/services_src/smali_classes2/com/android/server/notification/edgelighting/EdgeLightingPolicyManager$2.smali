.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;
.super Landroid/database/ContentObserver;
.source "EdgeLightingPolicyManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 146
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo p2, "touchpad_enabled"

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 148
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$2;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    const-string p2, "false"

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$mgetDesktopSettingsValue(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$fputmIsTouchpadEnabled(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;Z)V

    :cond_0
    return-void
.end method
