.class Lorg/spongycastle/est/ESTResponse$PrintingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/est/ESTResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrintingInputStream"
.end annotation


# instance fields
.field private final src:Ljava/io/InputStream;

.field final synthetic this$0:Lorg/spongycastle/est/ESTResponse;


# direct methods
.method private constructor <init>(Lorg/spongycastle/est/ESTResponse;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/spongycastle/est/ESTResponse$PrintingInputStream;->this$0:Lorg/spongycastle/est/ESTResponse;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lorg/spongycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/spongycastle/est/ESTResponse;Ljava/io/InputStream;Lorg/spongycastle/est/ESTResponse$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/est/ESTResponse$PrintingInputStream;-><init>(Lorg/spongycastle/est/ESTResponse;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/est/ESTResponse$PrintingInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return p0
.end method
