.class public Lcom/android/server/content/SyncManager$10;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .locals 11

    if-nez p3, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x3

    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 681
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 677
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0

    .line 673
    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager$10;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    return-void
.end method
