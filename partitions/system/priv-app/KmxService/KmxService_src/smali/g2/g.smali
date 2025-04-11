.class public final Lg2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg2/h;)V
    .locals 1

    invoke-interface {p1}, Lg2/h;->buildMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lg2/h;->withPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg2/g;->a:Ljava/lang/String;

    iput-object p1, p0, Lg2/g;->b:Ljava/lang/String;

    return-void
.end method
