.class public final synthetic Lcom/google/firebase/messaging/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/g;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/firebase/messaging/s;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/m;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/messaging/m;->c:Lcom/google/firebase/messaging/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lr3/o;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/m;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Lu9/a;

    iget-object v2, v1, Lu9/a;->a:Ljava/lang/Object;

    check-cast v2, Lv4/g;

    invoke-static {v2}, Lw1/e;->c(Lv4/g;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "*"

    invoke-virtual {v1, v2, v4, v3}, Lu9/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lr3/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu9/a;->a(Lr3/o;)Lr3/o;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/messaging/m;

    iget-object v3, p0, Lcom/google/firebase/messaging/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/messaging/m;->c:Lcom/google/firebase/messaging/s;

    invoke-direct {v2, v0, v3, p0}, Lcom/google/firebase/messaging/m;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/s;)V

    new-instance p0, Lr3/o;

    invoke-direct {p0}, Lr3/o;-><init>()V

    new-instance v3, Lr3/m;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v0, v2, p0}, Lr3/m;-><init>(Ljava/util/concurrent/Executor;Lr3/g;Lr3/o;)V

    iget-object v0, v1, Lr3/o;->b:Lz9/a;

    invoke-virtual {v0, v3}, Lz9/a;->e(Lr3/n;)V

    invoke-virtual {v1}, Lr3/o;->l()V

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)Lr3/o;
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/messaging/m;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/google/firebase/messaging/m;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/messaging/m;->c:Lcom/google/firebase/messaging/s;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    const-class v3, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;

    if-nez v4, :cond_0

    new-instance v4, Lp5/c;

    invoke-direct {v4, v2}, Lp5/c;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;

    :cond_0
    sget-object v2, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    iget-object v3, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lv4/g;

    invoke-virtual {v3}, Lv4/g;->a()V

    const-string v4, "[DEFAULT]"

    iget-object v5, v3, Lv4/g;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lv4/g;->d()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lw1/e;

    invoke-virtual {v4}, Lw1/e;->a()Ljava/lang/String;

    move-result-object v4

    monitor-enter v2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1, v4, v5, v6}, Lcom/google/firebase/messaging/s;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v2, Lp5/c;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|T|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|*"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/google/firebase/messaging/s;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_3
    iget-object p0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lv4/g;

    invoke-virtual {p0}, Lv4/g;->a()V

    const-string v1, "[DEFAULT]"

    iget-object v2, p0, Lv4/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "FirebaseMessaging"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invoking onNewToken for app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lv4/g;->a()V

    iget-object p0, p0, Lv4/g;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/google/firebase/messaging/j;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/google/firebase/messaging/j;->b(Landroid/content/Intent;)Lr3/o;

    :cond_5
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->j(Ljava/lang/Object;)Lr3/o;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v3

    throw p0
.end method
