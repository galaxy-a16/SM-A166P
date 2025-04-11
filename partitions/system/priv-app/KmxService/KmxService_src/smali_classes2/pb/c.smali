.class public final Lpb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/d;


# instance fields
.field public final a:Lorg/junit/runner/Description;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Description;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb/c;->a:Lorg/junit/runner/Description;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lpb/c;->a:Lorg/junit/runner/Description;

    invoke-virtual {p0}, Lorg/junit/runner/Description;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
