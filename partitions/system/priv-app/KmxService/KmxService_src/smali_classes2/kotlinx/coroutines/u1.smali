.class public final Lkotlinx/coroutines/u1;
.super Lkotlin/coroutines/a;
.source "SourceFile"


# static fields
.field public static final c:Ll4/e;


# instance fields
.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll4/e;

    invoke-direct {v0}, Ll4/e;-><init>()V

    sput-object v0, Lkotlinx/coroutines/u1;->c:Ll4/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/u1;->c:Ll4/e;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/h;)V

    return-void
.end method
