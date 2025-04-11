.class public final Lcom/google/firebase/messaging/b0;
.super Landroid/os/Binder;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final c:Lf9/b;


# direct methods
.method public constructor <init>(Lf9/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/b0;->c:Lf9/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/messaging/c0;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "service received new intent via bind strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/google/firebase/messaging/c0;->a:Landroid/content/Intent;

    iget-object p0, p0, Lcom/google/firebase/messaging/b0;->c:Lf9/b;

    iget-object p0, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/g;

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/g;->access$000(Lcom/google/firebase/messaging/g;Landroid/content/Intent;)Lr3/h;

    move-result-object p0

    new-instance v0, Li/a;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Li/a;-><init>(I)V

    new-instance v1, La5/a;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, La5/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Lr3/h;->a(Ljava/util/concurrent/Executor;Lr3/d;)Lr3/o;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Binding only allowed within app"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
