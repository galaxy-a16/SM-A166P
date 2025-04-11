.class public abstract Landroidx/fragment/app/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:Ljava/lang/CharSequence;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j1;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j1;->o:Z

    return-void
.end method


# virtual methods
.method public final b(Landroidx/fragment/app/i1;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/j1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroidx/fragment/app/j1;->b:I

    iput v0, p1, Landroidx/fragment/app/i1;->d:I

    iget v0, p0, Landroidx/fragment/app/j1;->c:I

    iput v0, p1, Landroidx/fragment/app/i1;->e:I

    iget v0, p0, Landroidx/fragment/app/j1;->d:I

    iput v0, p1, Landroidx/fragment/app/i1;->f:I

    iget p0, p0, Landroidx/fragment/app/j1;->e:I

    iput p0, p1, Landroidx/fragment/app/i1;->g:I

    return-void
.end method

.method public abstract c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method
