.class public final Landroidx/work/impl/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Lr1/a;Lo1/a;Landroidx/work/impl/WorkDatabase;Lp1/q;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lva/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lva/f;-><init>(I)V

    iput-object v0, p0, Landroidx/work/impl/h0;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/h0;->a:Landroid/content/Context;

    iput-object p3, p0, Landroidx/work/impl/h0;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/work/impl/h0;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/h0;->d:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/work/impl/h0;->e:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/work/impl/h0;->f:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/work/impl/h0;->h:Ljava/lang/Object;

    return-void
.end method
