.class public Lcom/android/server/enterprise/restriction/RoamingPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "RoamingPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SERVICE_STATE"

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->-$$Nest$mblockSyncIfRoaming(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    :cond_0
    return-void
.end method
