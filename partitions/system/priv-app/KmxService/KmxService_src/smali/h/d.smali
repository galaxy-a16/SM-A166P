.class public abstract Lh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/b0;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Lh/n;

.field public final d:Landroid/view/LayoutInflater;

.field public e:Lh/a0;

.field public final f:I

.field public final g:I

.field public h:Lh/d0;

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/d;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lh/d;->d:Landroid/view/LayoutInflater;

    const p1, 0x7f0c0074

    iput p1, p0, Lh/d;->f:I

    const p1, 0x7f0c0073

    iput p1, p0, Lh/d;->g:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lh/d;->i:I

    return p0
.end method

.method public i(Lh/p;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j(Lh/p;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
