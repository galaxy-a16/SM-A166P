.class Lorg/spongycastle/openpgp/PGPObjectFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/PGPObjectFactory;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private obj:Ljava/lang/Object;

.field final synthetic this$0:Lorg/spongycastle/openpgp/PGPObjectFactory;

.field private triedNext:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPObjectFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->this$0:Lorg/spongycastle/openpgp/PGPObjectFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    return-void
.end method

.method private getObject()Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->this$0:Lorg/spongycastle/openpgp/PGPObjectFactory;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iterator failed to get next object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroidx/activity/b;->d(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->getObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    iget-object p0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot remove element from factory."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
