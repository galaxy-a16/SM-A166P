.class public final Landroidx/recyclerview/widget/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ln/e;


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/o0;

.field public c:Landroidx/recyclerview/widget/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln/e;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln/e;-><init>(II)V

    sput-object v0, Landroidx/recyclerview/widget/z1;->d:Ln/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/z1;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/z1;->d:Ln/e;

    invoke-virtual {v0}, Ln/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/z1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/z1;-><init>()V

    :cond_0
    return-object v0
.end method
