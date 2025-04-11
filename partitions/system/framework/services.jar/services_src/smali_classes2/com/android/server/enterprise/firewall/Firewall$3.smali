.class public Lcom/android/server/enterprise/firewall/Firewall$3;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;Landroid/content/Intent;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    iput-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->val$intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserHandle: Lock acquired. UserID received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Got Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$3;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->-$$Nest$mhandleUserChains(Lcom/android/server/enterprise/firewall/Firewall;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
