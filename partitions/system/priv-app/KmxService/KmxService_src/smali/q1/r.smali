.class public final Lq1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/h;


# instance fields
.field public final a:Lr1/a;

.field public final b:Lo1/a;

.field public final c:Lp1/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lo1/a;Lr1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq1/r;->b:Lo1/a;

    iput-object p3, p0, Lq1/r;->a:Lr1/a;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->h()Lp1/s;

    move-result-object p1

    iput-object p1, p0, Lq1/r;->c:Lp1/s;

    return-void
.end method
