.class public final Landroidx/room/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/room/b;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1}, Landroidx/room/b;-><init>(IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 1

    const-string v0, "matches"

    invoke-static {p3, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/b;->a:I

    iput p2, p0, Landroidx/room/b;->b:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroidx/room/b;

    const-string v0, "other"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/room/b;->b:I

    iget v1, p1, Landroidx/room/b;->b:I

    invoke-static {v0, v1}, Li4/f;->o(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/room/b;->a:I

    iget p1, p1, Landroidx/room/b;->a:I

    invoke-static {p0, p1}, Li4/f;->o(II)I

    move-result v0

    :goto_0
    return v0
.end method
