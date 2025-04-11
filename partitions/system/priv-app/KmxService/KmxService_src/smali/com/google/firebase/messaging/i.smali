.class public final synthetic Lcom/google/firebase/messaging/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/b;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/i;->b:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/firebase/messaging/i;->c:Z

    return-void
.end method


# virtual methods
.method public final c(Lr3/h;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Lr3/h;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x192

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/i;->b:Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/google/firebase/messaging/i;->c:Z

    iget-object p0, p0, Lcom/google/firebase/messaging/i;->a:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/google/firebase/messaging/j;->a(Landroid/content/Context;Landroid/content/Intent;Z)Lr3/o;

    move-result-object p0

    new-instance p1, Li/a;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Li/a;-><init>(I)V

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lr3/o;->g(Ljava/util/concurrent/Executor;Lr3/b;)Lr3/o;

    move-result-object p1

    :goto_0
    return-object p1
.end method
