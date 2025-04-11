.class public interface abstract Landroid/gsi/IImageService;
.super Ljava/lang/Object;
.source "IImageService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract backingImageExists(Ljava/lang/String;)Z
.end method

.method public abstract createBackingImage(Ljava/lang/String;JILandroid/gsi/IProgressCallback;)V
.end method

.method public abstract deleteBackingImage(Ljava/lang/String;)V
.end method

.method public abstract disableImage(Ljava/lang/String;)V
.end method

.method public abstract getAllBackingImages()Ljava/util/List;
.end method

.method public abstract getAvbPublicKey(Ljava/lang/String;Landroid/gsi/AvbPublicKey;)I
.end method

.method public abstract getMappedImageDevice(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isImageDisabled(Ljava/lang/String;)Z
.end method

.method public abstract isImageMapped(Ljava/lang/String;)Z
.end method

.method public abstract mapImageDevice(Ljava/lang/String;ILandroid/gsi/MappedImage;)V
.end method

.method public abstract removeAllImages()V
.end method

.method public abstract removeDisabledImages()V
.end method

.method public abstract unmapImageDevice(Ljava/lang/String;)V
.end method

.method public abstract zeroFillNewImage(Ljava/lang/String;J)V
.end method
