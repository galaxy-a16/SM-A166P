.class public Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;
.super Ljava/io/Writer;
.source "FastPrintWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 39
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Shouldn\'t be here"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
.end method

.method public flush()V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method

.method public write([CII)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method
