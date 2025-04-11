.class public final Lcom/google/firebase/messaging/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ll/b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll/b;

    invoke-direct {v0}, Ll/b;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/q;->b:Ll/b;

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->a:Ljava/util/concurrent/Executor;

    return-void
.end method
