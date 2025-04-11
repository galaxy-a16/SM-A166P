.class public final Lp1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/work/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/work/f;)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p2, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp1/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lp1/m;->b:Landroidx/work/f;

    return-void
.end method
