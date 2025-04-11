.class public Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget p0, Lkotlin/reflect/x;->a:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "IllegalStateException. "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "x"

    invoke-static {p1, p0}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
