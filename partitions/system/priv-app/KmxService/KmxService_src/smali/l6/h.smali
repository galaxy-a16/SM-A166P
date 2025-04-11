.class public final Ll6/h;
.super Ll6/a;
.source "SourceFile"

# interfaces
.implements Lo6/d;


# instance fields
.field public final q:Lv7/d;


# direct methods
.method public constructor <init>(Lvc/c;Lw5/h;Ll6/f;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ll6/a;-><init>(Lvc/c;Lw5/h;Ll6/f;Z)V

    new-instance p1, Lv7/d;

    invoke-direct {p1}, Lv7/d;-><init>()V

    iput-object p1, p0, Ll6/h;->q:Lv7/d;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lm7/a;

    iget-object p0, p0, Ll6/a;->d:Lvc/c;

    instance-of v0, p0, Lw8/d;

    if-eqz v0, :cond_0

    check-cast p0, Lw8/d;

    invoke-interface {p0, p1}, Lw8/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
