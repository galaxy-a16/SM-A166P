.class public Lcom/android/server/pm/SharedUserSetting$2;
.super Lcom/android/server/utils/SnapshotCache;
.source "SharedUserSetting.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SharedUserSetting;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/server/pm/SharedUserSetting$2;->this$0:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/SharedUserSetting;
    .locals 2

    .line 96
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SharedUserSetting;-><init>(Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting-IA;)V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/pm/SharedUserSetting$2;->createSnapshot()Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0
.end method
