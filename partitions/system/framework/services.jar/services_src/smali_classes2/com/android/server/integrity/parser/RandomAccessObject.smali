.class public abstract Lcom/android/server/integrity/parser/RandomAccessObject;
.super Ljava/lang/Object;
.source "RandomAccessObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofFile(Ljava/io/File;)Lcom/android/server/integrity/parser/RandomAccessObject;
    .locals 1

    new-instance v0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;

    invoke-direct {v0, p0}, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessFileObject;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract length()I
.end method

.method public abstract read()I
.end method

.method public abstract read([BII)I
.end method

.method public abstract seek(I)V
.end method
