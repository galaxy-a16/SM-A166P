.class public Landroidx/constraintlayout/solver/widgets/analyzer/g;
.super Landroidx/constraintlayout/solver/widgets/analyzer/f;
.source "SourceFile"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/f;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/r;)V

    instance-of p1, p1, Landroidx/constraintlayout/solver/widgets/analyzer/k;

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->e:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode$Type;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->j:Z

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->g:I

    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/analyzer/d;

    invoke-interface {p1, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/d;->a(Landroidx/constraintlayout/solver/widgets/analyzer/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method
