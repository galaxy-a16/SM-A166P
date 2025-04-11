.class public final Lkotlinx/coroutines/flow/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# static fields
.field public static final a:Lkotlinx/coroutines/flow/internal/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/internal/q;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/q;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/internal/q;->a:Lkotlinx/coroutines/flow/internal/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method
