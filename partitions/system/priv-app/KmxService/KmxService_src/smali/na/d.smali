.class public final Lna/d;
.super Lna/e;
.source "SourceFile"


# instance fields
.field public final d:Lma/h;


# direct methods
.method public constructor <init>(Lha/a;Lpa/a;Lo2/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lna/e;-><init>(Lha/a;Lpa/a;Lo2/i;)V

    new-instance p1, Lma/h;

    iget-object p2, p3, Lo2/i;->e:Ljava/lang/Object;

    check-cast p2, Lqa/b;

    iget-object p3, p3, Lo2/i;->d:Ljava/lang/Object;

    check-cast p3, Lt6/a;

    invoke-direct {p1, p2, p3}, Lma/h;-><init>(Lqa/b;Lt6/a;)V

    iput-object p1, p0, Lna/d;->d:Lma/h;

    return-void
.end method
