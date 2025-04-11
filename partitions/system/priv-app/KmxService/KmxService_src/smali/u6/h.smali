.class public abstract Lu6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu6/b;


# instance fields
.field public final b:Lf6/h;


# direct methods
.method public constructor <init>(Lf6/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu6/h;->b:Lf6/h;

    return-void
.end method


# virtual methods
.method public final c()Lf6/h;
    .locals 0

    iget-object p0, p0, Lu6/h;->b:Lf6/h;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lu6/h;->b:Lf6/h;

    iget-object v0, p0, Lf6/h;->a:Lv7/t;

    invoke-interface {v0}, Lv7/t;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userProperties="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
