.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "PhoneRestrictionPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

.field public final synthetic val$lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/Object;)V
    .locals 0

    .line 2507
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x1

    .line 2510
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "smsBlockHandler"

    const/4 v1, 0x0

    .line 2512
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-ne p2, p1, :cond_0

    .line 2514
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    monitor-enter p1

    .line 2515
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;->val$lockObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2516
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
