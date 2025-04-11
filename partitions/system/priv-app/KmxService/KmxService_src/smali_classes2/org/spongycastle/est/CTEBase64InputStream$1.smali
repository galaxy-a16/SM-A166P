.class Lorg/spongycastle/est/CTEBase64InputStream$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/est/CTEBase64InputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/est/CTEBase64InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/est/CTEBase64InputStream$1;->this$0:Lorg/spongycastle/est/CTEBase64InputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3

    iget-object p0, p0, Lorg/spongycastle/est/CTEBase64InputStream$1;->this$0:Lorg/spongycastle/est/CTEBase64InputStream;

    iget-object v0, p0, Lorg/spongycastle/est/CTEBase64InputStream;->data:[B

    iget v1, p0, Lorg/spongycastle/est/CTEBase64InputStream;->wp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/est/CTEBase64InputStream;->wp:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void
.end method
