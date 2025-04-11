.class public final Lkotlinx/coroutines/android/b;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/u;


# instance fields
.field private volatile _preHandler:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lh5/d;->f:Lh5/d;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/h;)V

    iput-object p0, p0, Lkotlinx/coroutines/android/b;->_preHandler:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public i(Lkotlin/coroutines/i;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
