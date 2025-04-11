.class public final synthetic Lcom/google/firebase/messaging/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/f;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/k;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/messaging/k;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast p1, Lcom/google/firebase/messaging/x;

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lp5/c;

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Landroidx/emoji2/text/t;

    invoke-virtual {p0}, Landroidx/emoji2/text/t;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/google/firebase/messaging/x;->h:Lcom/google/firebase/messaging/v;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/v;->a()Lcom/google/firebase/messaging/u;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    monitor-enter p1

    :try_start_0
    iget-boolean p0, p1, Lcom/google/firebase/messaging/x;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/messaging/x;->f(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
