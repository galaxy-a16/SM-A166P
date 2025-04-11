.class public final Landroidx/work/p;
.super Landroidx/work/y;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Landroidx/work/impl/workers/DiagnosticsWorker;

    invoke-direct {p0, v0}, Landroidx/work/y;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, Landroidx/work/y;->b:Lp1/q;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp1/q;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Landroidx/work/z;
    .locals 1

    new-instance v0, Landroidx/work/q;

    invoke-direct {v0, p0}, Landroidx/work/q;-><init>(Landroidx/work/p;)V

    return-object v0
.end method

.method public final c()Landroidx/work/y;
    .locals 0

    return-object p0
.end method
