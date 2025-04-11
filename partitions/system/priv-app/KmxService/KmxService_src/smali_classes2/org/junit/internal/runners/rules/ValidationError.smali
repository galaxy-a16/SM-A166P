.class Lorg/junit/internal/runners/rules/ValidationError;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Luc/a;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luc/a;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method
