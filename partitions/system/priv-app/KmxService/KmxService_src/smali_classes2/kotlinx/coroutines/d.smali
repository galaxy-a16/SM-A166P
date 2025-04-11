.class public final Lkotlinx/coroutines/d;
.super Lkotlinx/coroutines/q0;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/q0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/d;->h:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final J()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/d;->h:Ljava/lang/Thread;

    return-object p0
.end method
