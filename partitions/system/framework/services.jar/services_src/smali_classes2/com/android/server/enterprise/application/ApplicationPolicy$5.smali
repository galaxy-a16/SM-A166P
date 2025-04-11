.class public Lcom/android/server/enterprise/application/ApplicationPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .line 7161
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "User switched"

    const-string v0, "ApplicationPolicy"

    .line 7163
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7165
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    .line 7169
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 7170
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 7172
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7173
    invoke-static {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidFromLUID(J)I

    move-result v3

    .line 7174
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 7184
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isPersonaEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "Persona no longer valid removing from cache"

    .line 7185
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7186
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$sfgetmAppStartOnUserSwitch()Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7191
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$5;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
